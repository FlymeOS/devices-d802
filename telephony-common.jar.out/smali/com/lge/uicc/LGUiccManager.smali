.class public Lcom/lge/uicc/LGUiccManager;
.super Ljava/lang/Object;
.source "LGUiccManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGUICC"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genericIO(Ljava/lang/String;[B)[B
    .locals 5
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "in"    # [B

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, "out":[B
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->getUiccService()Lcom/lge/uicc/ILGUiccService;

    move-result-object v2

    .line 113
    .local v2, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v2, :cond_0

    .line 114
    const/4 v3, 0x0

    .line 124
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_0
    return-object v3

    .line 116
    .restart local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :cond_0
    invoke-interface {v2, p0, p1}, Lcom/lge/uicc/ILGUiccService;->genericIO(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 122
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_1
    if-nez v1, :cond_1

    .line 123
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->traceCallerPackage()V

    :cond_1
    move-object v3, v1

    .line 124
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genericIO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genericIO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "slot"    # I
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 47
    .local v2, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->getUiccService()Lcom/lge/uicc/ILGUiccService;

    move-result-object v1

    .line 48
    .local v1, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v1, :cond_0

    .line 62
    .end local v1    # "service":Lcom/lge/uicc/ILGUiccService;
    .end local p2    # "def":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 51
    .restart local v1    # "service":Lcom/lge/uicc/ILGUiccService;
    .restart local p2    # "def":Ljava/lang/String;
    :cond_0
    invoke-interface {v1, p0, p1}, Lcom/lge/uicc/ILGUiccService;->getProperty(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 57
    .end local v1    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProperty: not ready: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->logd(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->traceCallerPackage()V

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProperty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 54
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProperty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    move-object p2, v2

    .line 62
    goto :goto_0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUiccService()Lcom/lge/uicc/ILGUiccService;
    .locals 2

    .prologue
    .line 333
    const-string v1, "lguicc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/ILGUiccService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/uicc/ILGUiccService;

    move-result-object v0

    .line 334
    .local v0, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v0, :cond_0

    .line 335
    const-string v1, "service is not ready"

    invoke-static {v1}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->traceCallerPackage()V

    .line 338
    :cond_0
    return-object v0
.end method

.method private static iccFileIO(Landroid/os/Bundle;Landroid/os/IRemoteCallback;)Landroid/os/Bundle;
    .locals 6
    .param p0, "in"    # Landroid/os/Bundle;
    .param p1, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v3, 0x0

    .line 297
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->getUiccService()Lcom/lge/uicc/ILGUiccService;

    move-result-object v2

    .line 298
    .local v2, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v2, :cond_0

    .line 328
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_0
    return-object v3

    .line 301
    .restart local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :cond_0
    if-nez p1, :cond_3

    .line 303
    const-string v4, "sync"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    new-instance v1, Lcom/lge/uicc/LGUiccManager$1SyncCallback;

    invoke-direct {v1}, Lcom/lge/uicc/LGUiccManager$1SyncCallback;-><init>()V

    .line 305
    .local v1, "replySync":Lcom/lge/uicc/LGUiccManager$1SyncCallback;
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 306
    :try_start_1
    invoke-interface {v2, p0, v1}, Lcom/lge/uicc/ILGUiccService;->iccFileIO(Landroid/os/Bundle;Landroid/os/IRemoteCallback;)V

    .line 307
    iget-boolean v4, v1, Lcom/lge/uicc/LGUiccManager$1SyncCallback;->notified:Z

    if-nez v4, :cond_1

    .line 308
    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 309
    :cond_1
    iget-object v4, v1, Lcom/lge/uicc/LGUiccManager$1SyncCallback;->out:Landroid/os/Bundle;

    if-nez v4, :cond_2

    .line 310
    const-string v4, "iccFileIO: fail to get result"

    invoke-static {v4}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->traceCallerPackage()V

    .line 313
    :cond_2
    iget-object v4, v1, Lcom/lge/uicc/LGUiccManager$1SyncCallback;->out:Landroid/os/Bundle;

    monitor-exit v1

    move-object v3, v4

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 319
    .end local v1    # "replySync":Lcom/lge/uicc/LGUiccManager$1SyncCallback;
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccFileIO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 317
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :cond_3
    :try_start_3
    const-string v4, "sync"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    invoke-interface {v2, p0, p1}, Lcom/lge/uicc/ILGUiccService;->iccFileIO(Landroid/os/Bundle;Landroid/os/IRemoteCallback;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 323
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :catch_1
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccFileIO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccFileIO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string v0, "LGUICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGUiccManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 357
    const-string v0, "LGUICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGUiccManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method public static readIccRecord(I)[B
    .locals 2
    .param p0, "efid"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/lge/uicc/LGUiccManager;->readIccRecord(IILandroid/os/IRemoteCallback;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readIccRecord(IILandroid/os/IRemoteCallback;)[B
    .locals 4
    .param p0, "slot"    # I
    .param p1, "efid"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, "in":Landroid/os/Bundle;
    const-string v2, "command"

    const-string v3, "read"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "int.slot"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    const-string v2, "int.efid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    invoke-static {v0, p2}, Lcom/lge/uicc/LGUiccManager;->iccFileIO(Landroid/os/Bundle;Landroid/os/IRemoteCallback;)Landroid/os/Bundle;

    move-result-object v1

    .line 167
    .local v1, "out":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 168
    const-string v2, "byte[].result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 170
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readIccRecordAllToString(I)[Ljava/lang/String;
    .locals 5
    .param p0, "efid"    # I

    .prologue
    const/4 v2, 0x0

    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v0, "in":Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "read"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v3, "int.slot"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v3, "int.efid"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    invoke-static {v0, v2}, Lcom/lge/uicc/LGUiccManager;->iccFileIO(Landroid/os/Bundle;Landroid/os/IRemoteCallback;)Landroid/os/Bundle;

    move-result-object v1

    .line 239
    .local v1, "out":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 240
    const-string v2, "String[].result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 242
    :cond_0
    return-object v2
.end method

.method public static readIccRecordToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "efid"    # I

    .prologue
    const/4 v2, 0x0

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v0, "in":Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "read"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v3, "int.slot"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v3, "int.efid"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    invoke-static {v0, v2}, Lcom/lge/uicc/LGUiccManager;->iccFileIO(Landroid/os/Bundle;Landroid/os/IRemoteCallback;)Landroid/os/Bundle;

    move-result-object v1

    .line 220
    .local v1, "out":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 221
    const-string v2, "String.result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    :cond_0
    return-object v2
.end method

.method public static requestEnvelope(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "envName"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, "in":Landroid/os/Bundle;
    const-string v2, "command"

    const-string v3, "envelope"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v2, "String.envName"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v2, "String.data"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/uicc/LGUiccManager;->iccFileIO(Landroid/os/Bundle;Landroid/os/IRemoteCallback;)Landroid/os/Bundle;

    move-result-object v1

    .line 280
    .local v1, "out":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 281
    const-string v2, "String.result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "FAIL"

    goto :goto_0
.end method

.method public static setProperty(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "slot"    # I
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 87
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->getUiccService()Lcom/lge/uicc/ILGUiccService;

    move-result-object v2

    .line 88
    .local v2, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v2, :cond_0

    .line 89
    const/4 v3, 0x0

    .line 99
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_0
    return v3

    .line 91
    .restart local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :cond_0
    invoke-interface {v2, p0, p1, p2}, Lcom/lge/uicc/ILGUiccService;->setProperty(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 97
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_1
    if-nez v1, :cond_1

    .line 98
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->traceCallerPackage()V

    :cond_1
    move v3, v1

    .line 99
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProperty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProperty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/lge/uicc/LGUiccManager;->setProperty(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static traceCallerPackage()V
    .locals 5

    .prologue
    .line 342
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 343
    .local v2, "stack":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x4

    .local v1, "s":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 344
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "cls":Ljava/lang/String;
    const-string v3, "com.lge.uicc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "java.lang"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": traceCaller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->logd(Ljava/lang/String;)V

    .line 350
    .end local v0    # "cls":Ljava/lang/String;
    :cond_0
    return-void

    .line 343
    .restart local v0    # "cls":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static updateIccRecord(II[BLandroid/os/IRemoteCallback;)Z
    .locals 5
    .param p0, "slot"    # I
    .param p1, "efid"    # I
    .param p2, "data"    # [B
    .param p3, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v2, 0x0

    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    .local v0, "in":Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "update"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v3, "int.slot"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v3, "int.efid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    const-string v3, "byte[].data"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 200
    invoke-static {v0, p3}, Lcom/lge/uicc/LGUiccManager;->iccFileIO(Landroid/os/Bundle;Landroid/os/IRemoteCallback;)Landroid/os/Bundle;

    move-result-object v1

    .line 201
    .local v1, "out":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 202
    const-string v3, "boolean.result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 204
    :cond_0
    return v2
.end method

.method public static updateIccRecord(I[B)Z
    .locals 2
    .param p0, "efid"    # I
    .param p1, "data"    # [B

    .prologue
    .line 181
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/lge/uicc/LGUiccManager;->updateIccRecord(II[BLandroid/os/IRemoteCallback;)Z

    move-result v0

    return v0
.end method

.method public static updateIccRecordFromString(ILjava/lang/String;)Z
    .locals 5
    .param p0, "efid"    # I
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 253
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 254
    .local v0, "in":Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "update"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v3, "int.slot"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const-string v3, "int.efid"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    const-string v3, "String.data"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/lge/uicc/LGUiccManager;->iccFileIO(Landroid/os/Bundle;Landroid/os/IRemoteCallback;)Landroid/os/Bundle;

    move-result-object v1

    .line 260
    .local v1, "out":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 261
    const-string v3, "boolean.result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 263
    :cond_0
    return v2
.end method
