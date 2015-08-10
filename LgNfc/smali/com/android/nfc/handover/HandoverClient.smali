.class public Lcom/android/nfc/handover/HandoverClient;
.super Ljava/lang/Object;
.source "HandoverClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "HandoverClient"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method checkHandoverCollision(Landroid/nfc/NdefMessage;)Z
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 88
    sget-object v1, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 97
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 49
    :try_start_0
    iget v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    if-eqz v3, :cond_0

    .line 50
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Socket in use."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 52
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 53
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    .line 55
    .local v1, "service":Lcom/android/nfc/NfcService;
    const/4 v2, 0x0

    .line 57
    .local v2, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const/4 v3, 0x0

    const/16 v4, 0x80

    const/4 v5, 0x1

    const/16 v6, 0x400

    :try_start_2
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_2
    .catch Lcom/android/nfc/LlcpException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 65
    :try_start_3
    sget-boolean v3, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "HandoverClient"

    const-string v4, "about to connect to service urn:nfc:sn:handover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    const-string v3, "urn:nfc:sn:handover"

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 81
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 82
    :try_start_4
    iput-object v2, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 83
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 84
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 85
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lcom/android/nfc/LlcpException;
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 60
    const/4 v3, 0x0

    :try_start_5
    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 61
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 62
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create socket"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 68
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 71
    :try_start_7
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 76
    :cond_2
    :goto_0
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 77
    const/4 v3, 0x0

    :try_start_8
    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 78
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 79
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not connect to handover service"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v3

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v3

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v3

    .line 72
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 15
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .line 165
    :goto_0
    return-object v3

    .line 103
    :cond_0
    const/4 v10, 0x0

    .line 104
    .local v10, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v13, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 105
    :try_start_0
    iget v12, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    const/4 v14, 0x2

    if-eq v12, v14, :cond_1

    .line 106
    new-instance v12, Ljava/io/IOException;

    const-string v14, "Socket not connected"

    invoke-direct {v12, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 109
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 108
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 109
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    const/4 v6, 0x0

    .line 111
    .local v6, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    .line 112
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v8

    .line 116
    .local v8, "remoteMiu":I
    sget-boolean v12, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v12, :cond_2

    const-string v12, "HandoverClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "about to send a "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " byte message"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    :goto_1
    array-length v12, v0

    if-ge v6, v12, :cond_4

    .line 118
    array-length v12, v0

    sub-int/2addr v12, v6

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 119
    .local v5, "length":I
    add-int v12, v6, v5

    invoke-static {v0, v6, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 120
    .local v11, "tmpBuffer":[B
    sget-boolean v12, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v12, :cond_3

    const-string v12, "HandoverClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "about to send a "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " byte packet"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_3
    invoke-interface {v10, v11}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 122
    add-int/2addr v6, v5

    .line 123
    goto :goto_1

    .line 126
    .end local v5    # "length":I
    .end local v11    # "tmpBuffer":[B
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/nfc/handover/HandoverClient;->checkHandoverCollision(Landroid/nfc/NdefMessage;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v12

    if-nez v12, :cond_7

    .line 127
    const/4 v3, 0x0

    .line 151
    if-eqz v10, :cond_6

    .line 153
    :try_start_3
    sget-boolean v12, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v12, :cond_5

    const-string v12, "HandoverClient"

    const-string v13, "about to close"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_5
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 160
    :cond_6
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 161
    :catch_0
    move-exception v12

    goto/16 :goto_0

    .line 131
    :cond_7
    :try_start_5
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v12

    new-array v7, v12, [B

    .line 132
    .local v7, "partial":[B
    const/4 v3, 0x0

    .line 134
    .local v3, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    :goto_3
    invoke-interface {v10, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v9

    .line 135
    .local v9, "size":I
    if-gez v9, :cond_a

    .line 151
    :goto_4
    if-eqz v10, :cond_9

    .line 153
    :try_start_6
    sget-boolean v12, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v12, :cond_8

    const-string v12, "HandoverClient"

    const-string v13, "about to close"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_8
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 160
    :cond_9
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 161
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 138
    :cond_a
    const/4 v12, 0x0

    :try_start_8
    invoke-virtual {v1, v7, v12, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 140
    :try_start_9
    new-instance v4, Landroid/nfc/NdefMessage;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v4, v12}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_9
    .catch Landroid/nfc/FormatException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v3    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .local v4, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    move-object v3, v4

    .line 142
    .end local v4    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .restart local v3    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    goto :goto_4

    .line 148
    .end local v3    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .end local v7    # "partial":[B
    .end local v8    # "remoteMiu":I
    .end local v9    # "size":I
    :catch_2
    move-exception v2

    .line 149
    .local v2, "e":Ljava/io/IOException;
    :try_start_a
    sget-boolean v12, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v12, :cond_b

    const-string v12, "HandoverClient"

    const-string v13, "couldn\'t connect to handover service"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 151
    :cond_b
    if-eqz v10, :cond_d

    .line 153
    :try_start_b
    sget-boolean v12, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v12, :cond_c

    const-string v12, "HandoverClient"

    const-string v13, "about to close"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_c
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 160
    :cond_d
    :goto_6
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 165
    :goto_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 151
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v12

    if-eqz v10, :cond_f

    .line 153
    :try_start_d
    sget-boolean v13, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v13, :cond_e

    const-string v13, "HandoverClient"

    const-string v14, "about to close"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_e
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 160
    :cond_f
    :goto_8
    :try_start_e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 163
    :goto_9
    throw v12

    .line 161
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v12

    goto :goto_7

    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v13

    goto :goto_9

    .line 155
    :catch_5
    move-exception v13

    goto :goto_8

    .restart local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v12

    goto :goto_6

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .restart local v7    # "partial":[B
    .restart local v8    # "remoteMiu":I
    .restart local v9    # "size":I
    :catch_7
    move-exception v12

    goto :goto_5

    .line 143
    :catch_8
    move-exception v12

    goto :goto_3

    .line 155
    .end local v3    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .end local v7    # "partial":[B
    .end local v9    # "size":I
    :catch_9
    move-exception v12

    goto :goto_2
.end method
