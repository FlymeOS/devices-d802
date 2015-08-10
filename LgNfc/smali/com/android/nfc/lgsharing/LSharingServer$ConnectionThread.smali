.class Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "LSharingServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/lgsharing/LSharingServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/lgsharing/LSharingServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/lgsharing/LSharingServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .locals 1
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    .line 141
    const-string v0, "LSharingServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 142
    iput-object p2, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 143
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 147
    sget-object v6, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "LSharingServer"

    const-string v8, "starting connection thread"

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 153
    :try_start_1
    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    iget-boolean v5, v6, Lcom/android/nfc/lgsharing/LSharingServer;->mServerRunning:Z

    .line 154
    .local v5, "running":Z
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    const/4 v3, 0x0

    .local v3, "requestMessage":Landroid/nfc/NdefMessage;
    move-object v1, v0

    .line 159
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    if-eqz v5, :cond_0

    .line 160
    :try_start_2
    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    iget-object v7, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-virtual {v6, v7, v1}, Lcom/android/nfc/lgsharing/LSharingServer;->receivePacket(Lcom/android/nfc/DeviceHost$LlcpSocket;Ljava/io/ByteArrayOutputStream;)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 162
    if-eqz v3, :cond_2

    .line 164
    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    iget-object v6, v6, Lcom/android/nfc/lgsharing/LSharingServer;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v6, v3}, Lcom/android/nfc/lgsharing/LSharingManager;->receiveMessage(Landroid/nfc/NdefMessage;)Z

    move-result v4

    .line 165
    .local v4, "ret":Z
    if-nez v4, :cond_1

    .line 166
    const-string v6, "LSharingServer"

    const-string v7, "Failed to create lg sharing response"

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 183
    .end local v4    # "ret":Z
    :cond_0
    :try_start_3
    sget-object v6, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "LSharingServer"

    const-string v8, "about to close"

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 189
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 194
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "requestMessage":Landroid/nfc/NdefMessage;
    .end local v5    # "running":Z
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    sget-object v6, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "LSharingServer"

    const-string v8, "finished connection thread"

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void

    .line 154
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    sget-object v6, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "LSharingServer"

    const-string v8, "IOException"

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 183
    :try_start_8
    sget-object v6, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "LSharingServer"

    const-string v8, "about to close"

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 189
    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 190
    :catch_1
    move-exception v6

    goto :goto_2

    .line 171
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "requestMessage":Landroid/nfc/NdefMessage;
    .restart local v4    # "ret":Z
    .restart local v5    # "running":Z
    :cond_1
    :try_start_a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 174
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "ret":Z
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_5
    :try_start_b
    iget-object v7, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v7
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 175
    :try_start_c
    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    iget-boolean v5, v6, Lcom/android/nfc/lgsharing/LSharingServer;->mServerRunning:Z

    .line 176
    monitor-exit v7

    move-object v1, v0

    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v6
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 182
    .end local v3    # "requestMessage":Landroid/nfc/NdefMessage;
    .end local v5    # "running":Z
    :catchall_2
    move-exception v6

    .line 183
    :goto_6
    :try_start_e
    sget-object v7, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v8, "LSharingServer"

    const-string v9, "about to close"

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v7, p0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 189
    :goto_7
    :try_start_f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .line 192
    :goto_8
    throw v6

    .line 190
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "requestMessage":Landroid/nfc/NdefMessage;
    .restart local v5    # "running":Z
    :catch_2
    move-exception v6

    move-object v0, v1

    .line 193
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 190
    .end local v3    # "requestMessage":Landroid/nfc/NdefMessage;
    .end local v5    # "running":Z
    :catch_3
    move-exception v7

    goto :goto_8

    .line 185
    :catch_4
    move-exception v7

    goto :goto_7

    .line 182
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "requestMessage":Landroid/nfc/NdefMessage;
    .restart local v5    # "running":Z
    :catchall_3
    move-exception v6

    move-object v0, v1

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 185
    .end local v3    # "requestMessage":Landroid/nfc/NdefMessage;
    .end local v5    # "running":Z
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    goto :goto_4

    .line 179
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "requestMessage":Landroid/nfc/NdefMessage;
    .restart local v5    # "running":Z
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 185
    .end local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v6

    goto :goto_1

    :cond_2
    move-object v0, v1

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5
.end method
