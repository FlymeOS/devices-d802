.class public Lcom/android/internal/telephony/soi/CdmaTransportTest;
.super Landroid/os/Handler;
.source "CdmaTransportTest.java"


# static fields
.field public static final MOACK_TEST_DURATION:I = 0x32

.field public static final MO_PARSE_TEST_ENABLE:Z

.field public static final MO_RECORD_TEST_ENABLE:Z

.field public static final MO_TEST_ENABLE:Z

.field public static final MO_TIMEOUT_TEST_ENABLE:Z

.field public static final MT_PARSE_TEST_ENABLE:Z

.field public static final MT_TEST_DURATION:I = 0x1f4

.field public static final MT_TEST_ENABLE:Z

.field public static final SCADDRESS_TEST_ENABLE:Z

.field public static final SMS_3GPP2_TEST_ENABLE:Z

.field static final TAG:Ljava/lang/String; = "CdmaTransportTest"

.field private static sInstance:Lcom/android/internal/telephony/soi/CdmaTransportTest;


# instance fields
.field public mOtaMtPdu:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    new-instance v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/CdmaTransportTest;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->sInstance:Lcom/android/internal/telephony/soi/CdmaTransportTest;

    .line 25
    const-string v0, "persist.soi.3gpp2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->SMS_3GPP2_TEST_ENABLE:Z

    .line 26
    const-string v0, "persist.soi.mo"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->MO_TEST_ENABLE:Z

    .line 27
    const-string v0, "persist.soi.mt"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->MT_TEST_ENABLE:Z

    .line 28
    const-string v0, "persist.soi.scaddress"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->SCADDRESS_TEST_ENABLE:Z

    .line 29
    const-string v0, "persist.soi.mo.parse"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->MO_PARSE_TEST_ENABLE:Z

    .line 30
    const-string v0, "persist.soi.mt.parse"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->MT_PARSE_TEST_ENABLE:Z

    .line 31
    const-string v0, "soi.mo.timeout"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->MO_TIMEOUT_TEST_ENABLE:Z

    .line 32
    const-string v0, "soi.mo.record"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->MO_RECORD_TEST_ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/internal/telephony/soi/CdmaTransportTest;
    .locals 3

    .prologue
    .line 69
    const-string v0, "CdmaTransportTest"

    const-string v1, "getDefault"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->sInstance:Lcom/android/internal/telephony/soi/CdmaTransportTest;

    if-nez v0, :cond_1

    .line 71
    const-class v1, Lcom/android/internal/telephony/soi/CdmaTransportTest;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->sInstance:Lcom/android/internal/telephony/soi/CdmaTransportTest;

    if-nez v0, :cond_0

    .line 73
    const-string v0, "CdmaTransportTest"

    const-string v2, "getDefault create CdmaTransportTest"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/CdmaTransportTest;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->sInstance:Lcom/android/internal/telephony/soi/CdmaTransportTest;

    .line 76
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->sInstance:Lcom/android/internal/telephony/soi/CdmaTransportTest;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getMsgObjAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/ImsPdu;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 120
    move-object v2, p1

    .line 121
    .local v2, "obj":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 122
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 123
    .local v1, "imsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    if-nez v2, :cond_0

    .line 124
    const-string v3, "CdmaTransportTest"

    const-string v4, "getMsgObjAsyncResultObj() msg.obj == null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-object v1

    :cond_0
    move-object v0, v2

    .line 126
    check-cast v0, Landroid/os/AsyncResult;

    .line 127
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 128
    const-string v3, "CdmaTransportTest"

    const-string v4, "getMsgObjAsyncResultObj() msg.obj.userObj == null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "imsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    check-cast v1, Lcom/android/internal/telephony/soi/ImsPdu;

    .restart local v1    # "imsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    goto :goto_0
.end method

.method private moAckTest(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 156
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/soi/CdmaTransportTest;->getMsgObjAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/ImsPdu;

    move-result-object v2

    .line 162
    .local v2, "imsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    const/4 v4, 0x2

    .line 163
    .local v4, "smsFormat":I
    invoke-virtual {v2}, Lcom/android/internal/telephony/soi/ImsPdu;->getData()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->createFromRawPdu([B)Lcom/android/internal/telephony/soi/CdmaTransportMessage;

    move-result-object v0

    .line 165
    .local v0, "ctm":Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->isMo()Z

    move-result v7

    if-ne v7, v6, :cond_0

    sget-boolean v7, Lcom/android/internal/telephony/soi/CdmaTransportTest;->MT_TEST_ENABLE:Z

    if-ne v7, v6, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->isMo()Z

    move-result v7

    if-nez v7, :cond_1

    :goto_0
    invoke-static {v6, v0}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getCdmaOta(ZLcom/android/internal/telephony/soi/CdmaTransportMessage;)[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->mOtaMtPdu:[B

    .line 167
    const-string v6, "CdmaTransportTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "moAckTest() mOtaMtPdu:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->mOtaMtPdu:[B

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    const/4 v1, 0x0

    .line 172
    .local v1, "data":[B
    const/4 v5, 0x1

    .line 173
    .local v5, "status":I
    const/4 v3, 0x0

    .line 174
    .local v3, "retryAfter":I
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v6

    invoke-virtual {v6, v5, v4, v3}, Lcom/android/internal/telephony/soi/SoiManager;->reportMoStatus(III)I

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransportTest;->invokeMT()V

    .line 176
    return-void

    .line 166
    .end local v1    # "data":[B
    .end local v3    # "retryAfter":I
    .end local v5    # "status":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private mtTest()V
    .locals 8

    .prologue
    .line 178
    const/4 v4, 0x2

    .line 179
    .local v4, "smsFormat":I
    const-string v3, "01020911495"

    .line 180
    .local v3, "scAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .line 181
    .local v1, "data":[B
    iget-object v1, p0, Lcom/android/internal/telephony/soi/CdmaTransportTest;->mOtaMtPdu:[B

    .line 182
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "otapdu":Ljava/lang/String;
    const-string v5, "CdmaTransportTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mtTest() otapdu: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/android/internal/telephony/soi/ImsPdu;

    invoke-direct {v0, v4, v1, v3}, Lcom/android/internal/telephony/soi/ImsPdu;-><init>(I[BLjava/lang/String;)V

    .line 185
    .local v0, "cdmaImsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/soi/SoiManager;->reportMtSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    .line 186
    return-void
.end method

.method private mtTestPreTreat()V
    .locals 3

    .prologue
    .line 137
    const-string v1, "soi.mt.ppdownload"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 138
    .local v0, "ppDownloadTest":Z
    sget-boolean v1, Lcom/android/internal/telephony/soi/CdmaTransportTest;->MT_TEST_ENABLE:Z

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/CdmaTransportTest;->ppDownloadTest()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/CdmaTransportTest;->mtTest()V

    goto :goto_0
.end method

.method private ppDownloadTest()V
    .locals 5

    .prologue
    .line 148
    const/4 v3, 0x2

    .line 149
    .local v3, "smsFormat":I
    const-string v2, "821020921852"

    .line 150
    .local v2, "scAddress":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/soi/TransportMessageTest;->getPpDownloadCdmaOtaPdu()[B

    move-result-object v1

    .line 151
    .local v1, "data":[B
    new-instance v0, Lcom/android/internal/telephony/soi/ImsPdu;

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/soi/ImsPdu;-><init>(I[BLjava/lang/String;)V

    .line 152
    .local v0, "cdmaImsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/soi/SoiManager;->reportMtSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    .line 153
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 47
    const-string v0, "CdmaTransportTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(), what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/soi/CdmaTransportTest;->msgToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 66
    :goto_0
    :sswitch_0
    return-void

    .line 50
    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, p0, v3, v1, v3}, Lcom/android/internal/telephony/soi/SoiTimer;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/CdmaTransportTest;->mtTestPreTreat()V

    goto :goto_0

    .line 57
    :sswitch_2
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    const/16 v1, 0x44c

    invoke-virtual {v0, p0, v3, v1, v3}, Lcom/android/internal/telephony/soi/SoiTimer;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/CdmaTransportTest;->moAckTest(Landroid/os/Message;)V

    goto :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_0
        0x44c -> :sswitch_2
        0x44d -> :sswitch_0
    .end sparse-switch
.end method

.method public invokeMT()V
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/soi/SoiTimer;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 113
    return-void
.end method

.method public invokeMoAck(Lcom/android/internal/telephony/soi/ImsPdu;)V
    .locals 3
    .param p1, "imsPdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    .line 117
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    const/16 v1, 0x44c

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/internal/telephony/soi/SoiTimer;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 118
    return-void
.end method

.method public msgToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 82
    sparse-switch p1, :sswitch_data_0

    .line 92
    const-string v0, "Invalid cmd"

    :goto_0
    return-object v0

    .line 84
    :sswitch_0
    const-string v0, "MSG_INVOKE_MT"

    goto :goto_0

    .line 86
    :sswitch_1
    const-string v0, "MSG_INVOKE_MT_CONCAT"

    goto :goto_0

    .line 88
    :sswitch_2
    const-string v0, "MSG_INVOKE_MO_ACK"

    goto :goto_0

    .line 90
    :sswitch_3
    const-string v0, "MSG_INVOKE_SMMA_ACK"

    goto :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
        0x44c -> :sswitch_2
        0x44d -> :sswitch_3
    .end sparse-switch
.end method
