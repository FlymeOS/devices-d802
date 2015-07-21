.class Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;
.super Landroid/bluetooth/BluetoothGattCallbackWrapper;
.source "LGBluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvertiseCallbackWrapper"
.end annotation


# static fields
.field private static final LE_CALLBACK_TIMEOUT_MILLIS:I = 0x7d0


# instance fields
.field private final mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private final mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

.field private final mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private mClientIf:I

.field private mIsAdvertising:Z

.field private final mScanResponse:Landroid/bluetooth/le/AdvertiseData;

.field private final mSettings:Landroid/bluetooth/le/AdvertiseSettings;

.field final synthetic this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;


# direct methods
.method public constructor <init>(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/IBluetoothGatt;)V
    .locals 1
    .param p2, "advertiseCallback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p3, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p5, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p6, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;

    .prologue
    const/4 v0, 0x0

    .line 298
    iput-object p1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallbackWrapper;-><init>()V

    .line 293
    iput-boolean v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 299
    iput-object p2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 300
    iput-object p3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

    .line 301
    iput-object p4, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Landroid/bluetooth/le/AdvertiseData;

    .line 302
    iput-object p5, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    .line 303
    iput-object p6, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 304
    iput v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 305
    return-void
.end method


# virtual methods
.method public onClientRegistered(II)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 359
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClientRegistered() - status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    monitor-enter p0

    .line 361
    if-nez p1, :cond_0

    .line 362
    :try_start_0
    iput p2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :try_start_1
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    iget-object v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertisement:Landroid/bluetooth/le/AdvertiseData;

    iget-object v4, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Landroid/bluetooth/le/AdvertiseData;

    iget-object v5, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    :try_start_2
    monitor-exit p0

    .line 375
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to start advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 374
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "isStart"    # Z
    .param p3, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 380
    monitor-enter p0

    .line 381
    if-eqz p2, :cond_1

    .line 382
    if-nez p1, :cond_0

    .line 384
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 385
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    # invokes: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    invoke-static {v1, v2, p3}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$300(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 401
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 402
    monitor-exit p0

    .line 404
    return-void

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    # invokes: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    invoke-static {v1, v2, p1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$200(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 393
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 394
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 395
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 396
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$100(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remote exception when unregistering"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public startRegisteration()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-ne v2, v3, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :goto_0
    return-void

    .line 312
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 313
    .local v1, "uuid":Ljava/util/UUID;
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBluetoothGatt:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v2, v3, p0}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 315
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    .end local v1    # "uuid":Ljava/util/UUID;
    :goto_1
    :try_start_2
    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$100(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 316
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to start registeration"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-gtz v2, :cond_2

    .line 323
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    iget-object v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    const/4 v4, 0x4

    # invokes: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    invoke-static {v2, v3, v4}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$200(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 328
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 329
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 330
    :catch_1
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "remote exception when unregistering"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    move-object v0, v2

    goto :goto_3
.end method

.method public stopAdvertising()V
    .locals 4

    .prologue
    .line 338
    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->stopMultiAdvertising(I)V

    .line 341
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$100(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$100(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_0
    monitor-exit p0

    .line 352
    return-void

    .line 342
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to stop advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 342
    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1
.end method
