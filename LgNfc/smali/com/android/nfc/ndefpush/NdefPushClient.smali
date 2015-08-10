.class public Lcom/android/nfc/ndefpush/NdefPushClient;
.super Ljava/lang/Object;
.source "NdefPushClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "NdefPushClient"


# instance fields
.field final mLock:Ljava/lang/Object;

.field private mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/ndefpush/NdefPushClient;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 136
    :try_start_1
    sget-boolean v0, Lcom/android/nfc/ndefpush/NdefPushClient;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NdefPushClient"

    const-string v2, "About to close NPP socket."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 143
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 138
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
    .line 50
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 51
    :try_start_0
    iget v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    if-eqz v3, :cond_0

    .line 52
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Socket still in use."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 54
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 55
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    .line 57
    .local v1, "service":Lcom/android/nfc/NfcService;
    const/4 v2, 0x0

    .line 58
    .local v2, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-boolean v3, Lcom/android/nfc/ndefpush/NdefPushClient;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "NdefPushClient"

    const-string v4, "about to create socket"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    const/4 v3, 0x0

    const/16 v4, 0x80

    const/4 v5, 0x1

    const/16 v6, 0x400

    :try_start_2
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_2
    .catch Lcom/android/nfc/LlcpException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 68
    :try_start_3
    sget-boolean v3, Lcom/android/nfc/ndefpush/NdefPushClient;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "NdefPushClient"

    const-string v4, "about to connect to service com.android.npp"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_2
    const-string v3, "com.android.npp"

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 84
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 85
    :try_start_4
    iput-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 86
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 87
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 88
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lcom/android/nfc/LlcpException;
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 63
    const/4 v3, 0x0

    :try_start_5
    iput v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 64
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 65
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create socket."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 70
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 73
    :try_start_7
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 78
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 79
    const/4 v3, 0x0

    :try_start_8
    iput v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 80
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 81
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not connect service."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v3

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v3

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v3

    .line 74
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public push(Landroid/nfc/NdefMessage;)Z
    .locals 13
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 91
    const/4 v6, 0x0

    .line 92
    .local v6, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    iget-object v10, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 93
    :try_start_0
    iget v11, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    .line 94
    const-string v9, "NdefPushClient"

    const-string v11, "Not connected to NPP."

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    monitor-exit v10

    .line 129
    :cond_0
    :goto_0
    return v8

    .line 97
    :cond_1
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 98
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    new-instance v4, Lcom/android/nfc/ndefpush/NdefPushProtocol;

    invoke-direct {v4, p1, v9}, Lcom/android/nfc/ndefpush/NdefPushProtocol;-><init>(Landroid/nfc/NdefMessage;B)V

    .line 101
    .local v4, "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushProtocol;->toByteArray()[B

    move-result-object v0

    .line 102
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 106
    .local v3, "offset":I
    :try_start_1
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v5

    .line 107
    .local v5, "remoteMiu":I
    sget-boolean v10, Lcom/android/nfc/ndefpush/NdefPushClient;->DBG:Z

    if-eqz v10, :cond_2

    const-string v10, "NdefPushClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "about to send a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " byte message"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    :goto_1
    array-length v10, v0

    if-ge v3, v10, :cond_4

    .line 109
    array-length v10, v0

    sub-int/2addr v10, v3

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 110
    .local v2, "length":I
    add-int v10, v3, v2

    invoke-static {v0, v3, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 111
    .local v7, "tmpBuffer":[B
    sget-boolean v10, Lcom/android/nfc/ndefpush/NdefPushClient;->DBG:Z

    if-eqz v10, :cond_3

    const-string v10, "NdefPushClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "about to send a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " byte packet"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_3
    invoke-interface {v6, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    add-int/2addr v3, v2

    .line 114
    goto :goto_1

    .line 98
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    .end local v3    # "offset":I
    .end local v4    # "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .end local v5    # "remoteMiu":I
    .end local v7    # "tmpBuffer":[B
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 120
    .restart local v0    # "buffer":[B
    .restart local v3    # "offset":I
    .restart local v4    # "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .restart local v5    # "remoteMiu":I
    :cond_4
    if-eqz v6, :cond_6

    .line 122
    :try_start_3
    sget-boolean v8, Lcom/android/nfc/ndefpush/NdefPushClient;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "NdefPushClient"

    const-string v10, "about to close"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_5
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_6
    :goto_2
    move v8, v9

    .line 126
    goto :goto_0

    .line 116
    .end local v5    # "remoteMiu":I
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string v9, "NdefPushClient"

    const-string v10, "couldn\'t send tag"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-boolean v9, Lcom/android/nfc/ndefpush/NdefPushClient;->DBG:Z

    if-eqz v9, :cond_7

    const-string v9, "NdefPushClient"

    const-string v10, "exception:"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 120
    :cond_7
    if-eqz v6, :cond_0

    .line 122
    :try_start_5
    sget-boolean v9, Lcom/android/nfc/ndefpush/NdefPushClient;->DBG:Z

    if-eqz v9, :cond_8

    const-string v9, "NdefPushClient"

    const-string v10, "about to close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_8
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 124
    :catch_1
    move-exception v9

    goto/16 :goto_0

    .line 120
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    if-eqz v6, :cond_a

    .line 122
    :try_start_6
    sget-boolean v9, Lcom/android/nfc/ndefpush/NdefPushClient;->DBG:Z

    if-eqz v9, :cond_9

    const-string v9, "NdefPushClient"

    const-string v10, "about to close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_9
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 126
    :cond_a
    :goto_3
    throw v8

    .line 124
    :catch_2
    move-exception v9

    goto :goto_3

    .restart local v5    # "remoteMiu":I
    :catch_3
    move-exception v8

    goto :goto_2
.end method
