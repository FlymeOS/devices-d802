.class Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
.super Ljava/lang/Thread;
.source "NdefPushServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/ndefpush/NdefPushServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field mRunning:Z

.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field final synthetic this$0:Lcom/android/nfc/ndefpush/NdefPushServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/ndefpush/NdefPushServer;)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-boolean v9, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 131
    .local v9, "threadRunning":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    if-eqz v9, :cond_4

    .line 133
    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NdefPushServer"

    const-string v1, "about create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v10
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 136
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    iget-object v0, v0, Lcom/android/nfc/ndefpush/NdefPushServer;->mService:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    iget v1, v1, Lcom/android/nfc/ndefpush/NdefPushServer;->mSap:I

    const-string v2, "com.android.npp"

    const/16 v3, 0xf8

    const/4 v4, 0x1

    const/16 v5, 0x400

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 138
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_7

    .line 140
    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NdefPushServer"

    const-string v1, "failed to create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 173
    :try_start_4
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_3

    .line 174
    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NdefPushServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 176
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 180
    :goto_1
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 182
    :cond_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 189
    :cond_4
    :goto_2
    return-void

    .line 131
    .end local v9    # "threadRunning":Z
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 138
    .restart local v9    # "threadRunning":Z
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Lcom/android/nfc/LlcpException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 167
    :catch_0
    move-exception v7

    .line 168
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_a
    const-string v0, "NdefPushServer"

    const-string v1, "llcp error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 172
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 173
    :try_start_b
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_6

    .line 174
    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "NdefPushServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 176
    :cond_5
    :try_start_c
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 180
    :goto_3
    const/4 v0, 0x0

    :try_start_d
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 182
    :cond_6
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 185
    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :goto_4
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 186
    :try_start_e
    iget-boolean v9, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 187
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v0

    .line 182
    :catchall_3
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v0

    .line 143
    :cond_7
    :try_start_10
    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "NdefPushServer"

    const-string v1, "created LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_8
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1
    :try_end_10
    .catch Lcom/android/nfc/LlcpException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 145
    :try_start_11
    iget-boolean v9, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 146
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 148
    :goto_5
    if-eqz v9, :cond_13

    .line 150
    :try_start_12
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1
    :try_end_12
    .catch Lcom/android/nfc/LlcpException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 151
    :try_start_13
    iget-object v8, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 152
    .local v8, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 153
    if-nez v8, :cond_f

    .line 172
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 173
    :try_start_14
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_a

    .line 174
    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "NdefPushServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 176
    :cond_9
    :try_start_15
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 180
    :goto_6
    const/4 v0, 0x0

    :try_start_16
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 182
    :cond_a
    monitor-exit v1

    goto :goto_2

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v0

    .line 146
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_5
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    throw v0
    :try_end_18
    .catch Lcom/android/nfc/LlcpException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 169
    :catch_1
    move-exception v7

    .line 170
    .local v7, "e":Ljava/io/IOException;
    :try_start_19
    const-string v0, "NdefPushServer"

    const-string v1, "IO error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 172
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 173
    :try_start_1a
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_c

    .line 174
    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "NdefPushServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 176
    :cond_b
    :try_start_1b
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 180
    :goto_7
    const/4 v0, 0x0

    :try_start_1c
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 182
    :cond_c
    monitor-exit v1

    goto :goto_4

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    throw v0

    .line 152
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :try_start_1e
    throw v0
    :try_end_1e
    .catch Lcom/android/nfc/LlcpException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 172
    :catchall_8
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 173
    :try_start_1f
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v2, :cond_e

    .line 174
    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "NdefPushServer"

    const-string v3, "about to close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    .line 176
    :cond_d
    :try_start_20
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    .line 180
    :goto_8
    const/4 v2, 0x0

    :try_start_21
    iput-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 182
    :cond_e
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    throw v0

    .line 155
    .restart local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_f
    :try_start_22
    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "NdefPushServer"

    const-string v1, "about to accept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_10
    invoke-interface {v8}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 157
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "NdefPushServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_11
    if-eqz v6, :cond_12

    .line 159
    new-instance v0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-direct {v0, v1, v6}, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;-><init>(Lcom/android/nfc/ndefpush/NdefPushServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->start()V

    .line 162
    :cond_12
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1
    :try_end_22
    .catch Lcom/android/nfc/LlcpException; {:try_start_22 .. :try_end_22} :catch_0
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .line 163
    :try_start_23
    iget-boolean v9, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 164
    monitor-exit v1

    goto/16 :goto_5

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    :try_start_24
    throw v0

    .line 166
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_13
    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "NdefPushServer"

    const-string v1, "stop running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Lcom/android/nfc/LlcpException; {:try_start_24 .. :try_end_24} :catch_0
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    .line 172
    :cond_14
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 173
    :try_start_25
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_16

    .line 174
    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->DBG:Z
    invoke-static {}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "NdefPushServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    .line 176
    :cond_15
    :try_start_26
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_5
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    .line 180
    :goto_9
    const/4 v0, 0x0

    :try_start_27
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 182
    :cond_16
    monitor-exit v1

    goto/16 :goto_4

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    throw v0

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catchall_b
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_c
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    throw v0

    .line 177
    :catch_2
    move-exception v2

    goto/16 :goto_8

    .local v7, "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    goto/16 :goto_7

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catch_4
    move-exception v0

    goto/16 :goto_3

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catch_5
    move-exception v0

    goto :goto_9

    .restart local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_6
    move-exception v0

    goto/16 :goto_6

    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_7
    move-exception v0

    goto/16 :goto_1
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 193
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 194
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 202
    :cond_0
    monitor-exit v1

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0
.end method
