.class public Lcom/android/nfc/lgsharing/LSharingClient;
.super Ljava/lang/Object;
.source "LSharingClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "LSharingClient"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 71
    sget-object v1, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    .line 81
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 75
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
    .line 31
    sget-object v4, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 32
    :try_start_0
    iget v3, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    if-eqz v3, :cond_0

    .line 33
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Socket in use."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 36
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 35
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput v3, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    .line 36
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    .line 38
    .local v1, "service":Lcom/android/nfc/NfcService;
    const/4 v2, 0x0

    .line 40
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

    .line 48
    :try_start_3
    sget-boolean v3, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v4, "LSharingClient"

    const-string v5, "about to connect to service urn:nfc:xsn:lge.com:lgsharing"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v3, "urn:nfc:xsn:lge.com:lgsharing"

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 64
    sget-object v4, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 65
    :try_start_4
    iput-object v2, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 66
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    .line 67
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 68
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lcom/android/nfc/LlcpException;
    sget-object v4, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 43
    const/4 v3, 0x0

    :try_start_5
    iput v3, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    .line 44
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 45
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create socket"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 44
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 51
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 54
    :try_start_7
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 59
    :cond_1
    :goto_0
    sget-object v4, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 60
    const/4 v3, 0x0

    :try_start_8
    iput v3, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    .line 61
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 62
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not connect to service"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v3

    .line 67
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v3

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v3

    .line 55
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public sendLGSharingMessage(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 13
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 84
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return-object v12

    .line 86
    :cond_0
    const/4 v6, 0x0

    .line 87
    .local v6, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v9, Lcom/android/nfc/lgsharing/LSharingClient;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 88
    :try_start_0
    iget v8, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mState:I

    const/4 v10, 0x2

    if-eq v8, v10, :cond_1

    .line 89
    new-instance v8, Ljava/io/IOException;

    const-string v10, "Socket not connected"

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 92
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 91
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 92
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    const/4 v4, 0x0

    .line 94
    .local v4, "offset":I
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    .line 95
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v5

    .line 99
    .local v5, "remoteMiu":I
    sget-boolean v8, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v9, "LSharingClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "about to send a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " byte message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_1
    array-length v8, v0

    if-ge v4, v8, :cond_2

    .line 101
    array-length v8, v0

    sub-int/2addr v8, v4

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 102
    .local v3, "length":I
    add-int v8, v4, v3

    invoke-static {v0, v4, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 103
    .local v7, "tmpBuffer":[B
    sget-boolean v8, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v9, "LSharingClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "about to send a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " byte packet"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {v6, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    add-int/2addr v4, v3

    .line 106
    goto :goto_1

    .line 111
    .end local v3    # "length":I
    .end local v7    # "tmpBuffer":[B
    :cond_2
    if-eqz v6, :cond_3

    .line 113
    :try_start_3
    sget-boolean v8, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v9, "LSharingClient"

    const-string v10, "about to close"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 120
    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 121
    :catch_0
    move-exception v8

    goto/16 :goto_0

    .line 108
    .end local v5    # "remoteMiu":I
    :catch_1
    move-exception v2

    .line 109
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    sget-boolean v8, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v9, "LSharingClient"

    const-string v10, "couldn\'t connect to service"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 111
    if-eqz v6, :cond_4

    .line 113
    :try_start_6
    sget-boolean v8, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v9, "LSharingClient"

    const-string v10, "about to close"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 120
    :cond_4
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 121
    :catch_2
    move-exception v8

    goto/16 :goto_0

    .line 111
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    if-eqz v6, :cond_5

    .line 113
    :try_start_8
    sget-boolean v9, Lcom/android/nfc/lgsharing/LSharingClient;->DBG:Z

    const-string v10, "LSharingClient"

    const-string v11, "about to close"

    invoke-static {v9, v10, v11}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 120
    :cond_5
    :goto_4
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 123
    :goto_5
    throw v8

    .line 121
    :catch_3
    move-exception v9

    goto :goto_5

    .line 115
    :catch_4
    move-exception v9

    goto :goto_4

    .restart local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    goto :goto_3

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "remoteMiu":I
    :catch_6
    move-exception v8

    goto :goto_2
.end method
