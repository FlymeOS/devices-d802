.class public Lcom/android/nfc/snep/SnepMessenger;
.super Ljava/lang/Object;
.source "SnepMessenger.java"


# static fields
.field private static final DBG:Z

.field private static final HEADER_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SnepMessager"


# instance fields
.field final mFragmentLength:I

.field final mIsClient:Z

.field final mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    return-void
.end method

.method public constructor <init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .locals 0
    .param p1, "isClient"    # Z
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 42
    iput p3, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    .line 43
    iput-boolean p1, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    .line 44
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V

    .line 191
    return-void
.end method

.method public getMessage()Lcom/android/nfc/snep/SnepMessage;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/nfc/snep/SnepException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-direct {v7, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 95
    .local v7, "buffer":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    new-array v13, v1, [B

    .line 97
    .local v13, "partial":[B
    const/4 v15, 0x0

    .line 98
    .local v15, "requestSize":I
    const/4 v14, 0x0

    .line 99
    .local v14, "readSize":I
    const/4 v2, 0x0

    .line 100
    .local v2, "requestVersion":B
    const/4 v9, 0x0

    .line 103
    .local v9, "doneReading":Z
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v1, :cond_1

    .line 104
    const/4 v11, 0x0

    .line 105
    .local v11, "fieldContinue":B
    const/16 v12, 0x7f

    .line 111
    .local v12, "fieldReject":B
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1, v13}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v16

    .line 112
    .local v16, "size":I
    sget-boolean v1, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SnepMessager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    if-gez v16, :cond_2

    .line 115
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v12}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 119
    :goto_1
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Error reading SNEP message."

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    .end local v11    # "fieldContinue":B
    .end local v12    # "fieldReject":B
    .end local v16    # "size":I
    :cond_1
    const/16 v11, -0x80

    .line 108
    .restart local v11    # "fieldContinue":B
    const/4 v12, -0x1

    .restart local v12    # "fieldReject":B
    goto :goto_0

    .line 120
    .restart local v16    # "size":I
    :cond_2
    const/4 v1, 0x6

    move/from16 v0, v16

    if-ge v0, v1, :cond_3

    .line 122
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v12}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 126
    :goto_2
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Invalid fragment from sender."

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_3
    add-int/lit8 v14, v16, -0x6

    .line 129
    const/4 v1, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v13, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 132
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v8, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 133
    .local v8, "dataIn":Ljava/io/DataInputStream;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 134
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 135
    .local v3, "requestField":B
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 137
    sget-boolean v1, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "SnepMessager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_4
    and-int/lit16 v1, v2, 0xf0

    shr-int/lit8 v1, v1, 0x4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    .line 141
    new-instance v1, Lcom/android/nfc/snep/SnepMessage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    .line 182
    :goto_3
    return-object v1

    .line 144
    :cond_5
    if-le v15, v14, :cond_9

    .line 145
    sget-boolean v1, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "SnepMessager"

    const-string v4, "requesting continuation"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v11}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 152
    :cond_7
    :goto_4
    if-nez v9, :cond_b

    .line 154
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1, v13}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v16

    .line 155
    sget-boolean v1, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "SnepMessager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 156
    :cond_8
    if-gez v16, :cond_a

    .line 158
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v12}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 162
    :goto_5
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 170
    :catch_0
    move-exception v10

    .line 172
    .local v10, "e":Ljava/io/IOException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v12}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 176
    :goto_6
    throw v10

    .line 148
    .end local v10    # "e":Ljava/io/IOException;
    :cond_9
    const/4 v9, 0x1

    goto :goto_4

    .line 164
    :cond_a
    add-int v14, v14, v16

    .line 165
    const/4 v1, 0x0

    :try_start_6
    move/from16 v0, v16

    invoke-virtual {v7, v13, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 166
    if-ne v14, v15, :cond_7

    .line 167
    const/4 v9, 0x1

    goto :goto_4

    .line 182
    :cond_b
    :try_start_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    :try_end_7
    .catch Landroid/nfc/FormatException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v1

    goto/16 :goto_3

    .line 183
    :catch_1
    move-exception v10

    .line 184
    .local v10, "e":Landroid/nfc/FormatException;
    const-string v1, "SnepMessager"

    const-string v4, "Badly formatted NDEF message, ignoring"

    invoke-static {v1, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    new-instance v1, Lcom/android/nfc/snep/SnepException;

    invoke-direct {v1, v10}, Lcom/android/nfc/snep/SnepException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 173
    .local v10, "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    goto :goto_6

    .line 159
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    goto :goto_5

    .line 123
    .end local v3    # "requestField":B
    .end local v8    # "dataIn":Ljava/io/DataInputStream;
    :catch_4
    move-exception v1

    goto/16 :goto_2

    .line 116
    :catch_5
    move-exception v1

    goto/16 :goto_1
.end method

.method public sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    .locals 11
    .param p1, "msg"    # Lcom/android/nfc/snep/SnepMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v0

    .line 49
    .local v0, "buffer":[B
    iget-boolean v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v8, :cond_3

    .line 50
    const/16 v4, -0x80

    .line 54
    .local v4, "remoteContinue":B
    :goto_0
    sget-boolean v8, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "SnepMessager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "about to send a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " byte message"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    array-length v8, v0

    iget v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 58
    .local v2, "length":I
    const/4 v8, 0x0

    invoke-static {v0, v8, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 59
    .local v7, "tmpBuffer":[B
    sget-boolean v8, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "SnepMessager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "about to send a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " byte fragment"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 62
    array-length v8, v0

    if-ne v2, v8, :cond_4

    .line 91
    :cond_2
    return-void

    .line 52
    .end local v2    # "length":I
    .end local v4    # "remoteContinue":B
    .end local v7    # "tmpBuffer":[B
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "remoteContinue":B
    goto :goto_0

    .line 67
    .restart local v2    # "length":I
    .restart local v7    # "tmpBuffer":[B
    :cond_4
    move v3, v2

    .line 68
    .local v3, "offset":I
    const/4 v8, 0x6

    new-array v5, v8, [B

    .line 69
    .local v5, "responseBytes":[B
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 72
    :try_start_0
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 77
    .local v6, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    sget-boolean v8, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "SnepMessager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got response from first fragment: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_5
    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v8

    if-eq v8, v4, :cond_6

    .line 79
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid response from server ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 73
    .end local v6    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Landroid/nfc/FormatException;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Invalid SNEP message"

    invoke-direct {v8, v9, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 84
    .end local v1    # "e":Landroid/nfc/FormatException;
    .restart local v6    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_6
    :goto_1
    array-length v8, v0

    if-ge v3, v8, :cond_2

    .line 85
    array-length v8, v0

    sub-int/2addr v8, v3

    iget v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 86
    add-int v8, v3, v2

    invoke-static {v0, v3, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 87
    sget-boolean v8, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v8, :cond_7

    const-string v8, "SnepMessager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "about to send a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " byte fragment"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_7
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 89
    add-int/2addr v3, v2

    goto :goto_1
.end method
