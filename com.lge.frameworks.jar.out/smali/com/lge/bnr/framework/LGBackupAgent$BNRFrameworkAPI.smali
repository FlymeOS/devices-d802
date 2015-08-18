.class Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;
.super Ljava/lang/Object;
.source "LGBackupAgent.java"

# interfaces
.implements Lcom/lge/bnr/framework/IBNRFrameworkAPI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bnr/framework/LGBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BNRFrameworkAPI"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/bnr/framework/LGBackupAgent;


# direct methods
.method constructor <init>(Lcom/lge/bnr/framework/LGBackupAgent;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized copyBackupFile(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/io/File;
    .param p3, "dest"    # Ljava/io/File;

    .prologue
    .line 482
    monitor-enter p0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 537
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 486
    :cond_1
    :try_start_0
    sget-boolean v7, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 490
    const v7, 0x7d000

    new-array v4, v7, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 491
    .local v4, "buf":[B
    const/4 v0, 0x0

    .line 492
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 495
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v8, 0x0

    invoke-direct {v7, p3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 499
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 501
    .local v5, "bytesRead":I
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_4

    .line 502
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 504
    iget-object v7, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v7}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 505
    iget-object v7, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v7}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v7

    invoke-interface {v7, p1, v5}, Lcom/lge/bnr/remote/IRemoteBackup;->setBackupProgressforCopyFile(Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 513
    :catch_0
    move-exception v6

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 515
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bytesRead":I
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v6, "e":Landroid/os/RemoteException;
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 523
    if-eqz v0, :cond_3

    .line 525
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 529
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 531
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 532
    :catch_1
    move-exception v7

    goto :goto_0

    .line 511
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bytesRead":I
    :cond_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 523
    if-eqz v1, :cond_5

    .line 525
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 529
    :cond_5
    :goto_4
    if-eqz v3, :cond_a

    .line 531
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 533
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 532
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 533
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 516
    .end local v5    # "bytesRead":I
    :catch_3
    move-exception v6

    .line 518
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 523
    if-eqz v0, :cond_6

    .line 525
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 529
    :cond_6
    :goto_6
    if-eqz v2, :cond_0

    .line 531
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_0

    .line 532
    :catch_4
    move-exception v7

    goto :goto_0

    .line 519
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v6

    .line 521
    .local v6, "e":Ljava/io/IOException;
    :goto_7
    :try_start_d
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 523
    if-eqz v0, :cond_7

    .line 525
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 529
    :cond_7
    :goto_8
    if-eqz v2, :cond_0

    .line 531
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_0

    .line 532
    :catch_6
    move-exception v7

    goto/16 :goto_0

    .line 523
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_9
    if-eqz v0, :cond_8

    .line 525
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 529
    :cond_8
    :goto_a
    if-eqz v2, :cond_9

    .line 531
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 533
    :cond_9
    :goto_b
    :try_start_12
    throw v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 482
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buf":[B
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 526
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buf":[B
    .restart local v5    # "bytesRead":I
    :catch_7
    move-exception v7

    goto :goto_4

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "bytesRead":I
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v6, "e":Landroid/os/RemoteException;
    :catch_8
    move-exception v7

    goto :goto_3

    .local v6, "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v7

    goto :goto_6

    .local v6, "e":Ljava/io/IOException;
    :catch_a
    move-exception v7

    goto :goto_8

    .end local v6    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v8

    goto :goto_a

    .line 532
    :catch_c
    move-exception v8

    goto :goto_b

    .line 523
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_9

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bytesRead":I
    :catchall_3
    move-exception v7

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_9

    .line 519
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bytesRead":I
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_d
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_7

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bytesRead":I
    :catch_e
    move-exception v6

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_7

    .line 516
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bytesRead":I
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_f
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bytesRead":I
    :catch_10
    move-exception v6

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 513
    .end local v5    # "bytesRead":I
    :catch_11
    move-exception v6

    goto :goto_2

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_12
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bytesRead":I
    :cond_a
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_0
.end method

.method public declared-synchronized setBackupComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "failItem"    # Lcom/lge/bnr/model/BNRFailItem;

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/bnr/remote/IRemoteBackup;->setBackupComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 406
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setBackupProgress(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "percents"    # I

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 380
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 370
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/bnr/remote/IRemoteBackup;->setBackupProgress(Ljava/lang/String;I)V

    .line 372
    const-string v1, "JGZIP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bnr.setBackupProgress(packageName, accumulateProgress) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 365
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setEnableBackup(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "totalFileCount"    # I

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    const-string v1, "TT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName  =   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v1, "TT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalFileCount =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/bnr/remote/IRemoteBackup;->setEnableBackup(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setEnableRestore(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lge/bnr/remote/IRemoteBackup;->setEnableRestore(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 452
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFailItem(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)Lcom/lge/bnr/model/BNRFailItem;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "failItem"    # Lcom/lge/bnr/model/BNRFailItem;

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/bnr/remote/IRemoteBackup;->setFailItem(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)Lcom/lge/bnr/model/BNRFailItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p2

    .line 470
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setRestoreComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "failItem"    # Lcom/lge/bnr/model/BNRFailItem;

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/bnr/remote/IRemoteBackup;->setRestoreComplete(Ljava/lang/String;Lcom/lge/bnr/model/BNRFailItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 421
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setRestoreProgress(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "percents"    # I

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 399
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 391
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v1}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/bnr/remote/IRemoteBackup;->setRestoreProgress(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 386
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized transferBackupFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/io/File;

    .prologue
    .line 542
    monitor-enter p0

    if-nez p2, :cond_1

    .line 591
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 546
    :cond_1
    :try_start_0
    sget-boolean v6, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 550
    new-instance v5, Lcom/lge/bnr/model/BNRZipByteData;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/lge/bnr/model/BNRZipByteData;-><init>(Ljava/lang/String;)V

    .line 552
    .local v5, "zipData":Lcom/lge/bnr/model/BNRZipByteData;
    const v6, 0x7d000

    new-array v4, v6, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 554
    .local v4, "sharedByte":[B
    const/4 v0, 0x0

    .line 557
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 561
    .local v2, "bytesRead":I
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3

    .line 563
    iget-object v6, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v6}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 564
    invoke-virtual {v5, v4}, Lcom/lge/bnr/model/BNRZipByteData;->set_byte([B)V

    .line 565
    invoke-virtual {v5, v2}, Lcom/lge/bnr/model/BNRZipByteData;->set_ReadByte(I)V

    .line 567
    iget-object v6, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v6}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v6

    invoke-interface {v6, p1, v5}, Lcom/lge/bnr/remote/IRemoteBackup;->setBackupStreamData(Ljava/lang/String;Lcom/lge/bnr/model/BNRZipByteData;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 571
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 573
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bytesRead":I
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "e":Landroid/os/RemoteException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 582
    if-eqz v0, :cond_0

    .line 584
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 585
    :catch_1
    move-exception v6

    goto :goto_0

    .line 582
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bytesRead":I
    :cond_3
    if-eqz v1, :cond_5

    .line 584
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v1

    .line 586
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 585
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v6

    move-object v0, v1

    .line 586
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 574
    .end local v2    # "bytesRead":I
    :catch_3
    move-exception v3

    .line 576
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 582
    if-eqz v0, :cond_0

    .line 584
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 585
    :catch_4
    move-exception v6

    goto :goto_0

    .line 577
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v3

    .line 579
    .local v3, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 582
    if-eqz v0, :cond_0

    .line 584
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 585
    :catch_6
    move-exception v6

    goto :goto_0

    .line 582
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v0, :cond_4

    .line 584
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 586
    :cond_4
    :goto_6
    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 542
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "sharedByte":[B
    .end local v5    # "zipData":Lcom/lge/bnr/model/BNRZipByteData;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 585
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "sharedByte":[B
    .restart local v5    # "zipData":Lcom/lge/bnr/model/BNRZipByteData;
    :catch_7
    move-exception v7

    goto :goto_6

    .line 582
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bytesRead":I
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 577
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v3

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 574
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_9
    move-exception v3

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 571
    .end local v2    # "bytesRead":I
    :catch_a
    move-exception v3

    goto :goto_2

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bytesRead":I
    :cond_5
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_0
.end method

.method public declared-synchronized transferByteArray(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "backupFileName"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 623
    :cond_0
    monitor-exit p0

    return-void

    .line 602
    :cond_1
    :try_start_1
    new-instance v2, Lcom/lge/bnr/model/BNRZipByteData;

    invoke-direct {v2, p2}, Lcom/lge/bnr/model/BNRZipByteData;-><init>(Ljava/lang/String;)V

    .line 604
    .local v2, "zipData":Lcom/lge/bnr/model/BNRZipByteData;
    const/4 v0, -0x1

    .line 605
    .local v0, "cnt":I
    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 606
    invoke-virtual {v2, p3}, Lcom/lge/bnr/model/BNRZipByteData;->set_byte([B)V

    .line 607
    invoke-virtual {v2, p4}, Lcom/lge/bnr/model/BNRZipByteData;->set_ReadByte(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    :try_start_2
    iget-object v3, p0, Lcom/lge/bnr/framework/LGBackupAgent$BNRFrameworkAPI;->this$0:Lcom/lge/bnr/framework/LGBackupAgent;

    # getter for: Lcom/lge/bnr/framework/LGBackupAgent;->remoteService:Lcom/lge/bnr/remote/IRemoteBackup;
    invoke-static {v3}, Lcom/lge/bnr/framework/LGBackupAgent;->access$300(Lcom/lge/bnr/framework/LGBackupAgent;)Lcom/lge/bnr/remote/IRemoteBackup;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lcom/lge/bnr/remote/IRemoteBackup;->setBackupStreamData(Ljava/lang/String;Lcom/lge/bnr/model/BNRZipByteData;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 617
    if-gez v0, :cond_0

    .line 618
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Remote IO Exception!!!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 598
    .end local v0    # "cnt":I
    .end local v2    # "zipData":Lcom/lge/bnr/model/BNRZipByteData;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 612
    .restart local v0    # "cnt":I
    .restart local v2    # "zipData":Lcom/lge/bnr/model/BNRZipByteData;
    :catch_0
    move-exception v1

    .line 614
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 617
    if-gez v0, :cond_0

    .line 618
    :try_start_5
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Remote IO Exception!!!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 617
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    if-gez v0, :cond_2

    .line 618
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Remote IO Exception!!!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
