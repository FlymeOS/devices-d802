.class public Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;
.super Ljava/lang/Thread;
.source "LSharingServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/lgsharing/LSharingServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/lgsharing/LSharingServer;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/lgsharing/LSharingServer;)V
    .locals 1

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mThreadRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-boolean v9, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mThreadRunning:Z

    .line 59
    .local v9, "threadRunning":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :goto_0
    if-eqz v9, :cond_1

    .line 63
    :try_start_1
    iget-object v10, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v10
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 64
    :try_start_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    iget v1, v1, Lcom/android/nfc/lgsharing/LSharingServer;->mSap:I

    const-string v2, "urn:nfc:xsn:lge.com:lgsharing"

    const/16 v3, 0x80

    const/4 v4, 0x1

    const/16 v5, 0x400

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 66
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_3

    .line 68
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "failed to create LLCP service socket"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 103
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 104
    :try_start_4
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "LSharingServer"

    const-string v3, "about to close"

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 107
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 111
    :goto_1
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 113
    :cond_0
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 120
    :cond_1
    :goto_2
    return-void

    .line 59
    .end local v9    # "threadRunning":Z
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 66
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

    .line 98
    :catch_0
    move-exception v7

    .line 99
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_a
    const-string v0, "LSharingServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "llcp error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 103
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 104
    :try_start_b
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_2

    .line 105
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "LSharingServer"

    const-string v3, "about to close"

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 107
    :try_start_c
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 111
    :goto_3
    const/4 v0, 0x0

    :try_start_d
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 113
    :cond_2
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 116
    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :goto_4
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 117
    :try_start_e
    iget-boolean v9, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mThreadRunning:Z

    .line 118
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v0

    .line 113
    :catchall_3
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v0

    .line 71
    :cond_3
    :try_start_10
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "created LLCP service socket"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1
    :try_end_10
    .catch Lcom/android/nfc/LlcpException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 73
    :try_start_11
    iget-boolean v9, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mThreadRunning:Z

    .line 74
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 76
    :goto_5
    if-eqz v9, :cond_9

    .line 78
    :try_start_12
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1
    :try_end_12
    .catch Lcom/android/nfc/LlcpException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 79
    :try_start_13
    iget-object v8, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 80
    .local v8, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 82
    if-nez v8, :cond_7

    .line 83
    :try_start_14
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "Server socket shut down."

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Lcom/android/nfc/LlcpException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 103
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 104
    :try_start_15
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_4

    .line 105
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "LSharingServer"

    const-string v3, "about to close"

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 107
    :try_start_16
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 111
    :goto_6
    const/4 v0, 0x0

    :try_start_17
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 113
    :cond_4
    monitor-exit v1

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    throw v0

    .line 74
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_5
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :try_start_19
    throw v0
    :try_end_19
    .catch Lcom/android/nfc/LlcpException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 100
    :catch_1
    move-exception v7

    .line 101
    .local v7, "e":Ljava/io/IOException;
    :try_start_1a
    const-string v0, "LSharingServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 103
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 104
    :try_start_1b
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_5

    .line 105
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "LSharingServer"

    const-string v3, "about to close"

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 107
    :try_start_1c
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_3
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 111
    :goto_7
    const/4 v0, 0x0

    :try_start_1d
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 113
    :cond_5
    monitor-exit v1

    goto/16 :goto_4

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    throw v0

    .line 80
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :try_start_1f
    throw v0
    :try_end_1f
    .catch Lcom/android/nfc/LlcpException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 103
    :catchall_8
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 104
    :try_start_20
    iget-object v2, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v2, :cond_6

    .line 105
    sget-object v2, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "LSharingServer"

    const-string v4, "about to close"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    .line 107
    :try_start_21
    iget-object v2, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    .line 111
    :goto_8
    const/4 v2, 0x0

    :try_start_22
    iput-object v2, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 113
    :cond_6
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    throw v0

    .line 86
    .restart local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_7
    :try_start_23
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "about to accept"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-interface {v8}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 88
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accept returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 89
    if-eqz v6, :cond_8

    .line 90
    new-instance v0, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    invoke-direct {v0, v1, v6}, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;-><init>(Lcom/android/nfc/lgsharing/LSharingServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingServer$ConnectionThread;->start()V

    .line 93
    :cond_8
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1
    :try_end_23
    .catch Lcom/android/nfc/LlcpException; {:try_start_23 .. :try_end_23} :catch_0
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    .line 94
    :try_start_24
    iget-boolean v9, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mThreadRunning:Z

    .line 95
    monitor-exit v1

    goto/16 :goto_5

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    :try_start_25
    throw v0

    .line 97
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_9
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "LSharingServer"

    const-string v2, "stop running"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Lcom/android/nfc/LlcpException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    .line 103
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 104
    :try_start_26
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_a

    .line 105
    sget-object v0, Lcom/android/nfc/lgsharing/LSharingServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "LSharingServer"

    const-string v3, "about to close"

    invoke-static {v0, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    .line 107
    :try_start_27
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_5
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    .line 111
    :goto_9
    const/4 v0, 0x0

    :try_start_28
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 113
    :cond_a
    monitor-exit v1

    goto/16 :goto_4

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    throw v0

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catchall_b
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_c
    move-exception v0

    :try_start_2a
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    throw v0

    .line 108
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
    .line 123
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->this$0:Lcom/android/nfc/lgsharing/LSharingServer;

    monitor-enter v1

    .line 124
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mThreadRunning:Z

    .line 125
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 127
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 133
    :cond_0
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method
