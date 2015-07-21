.class public final Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;
.super Ljava/lang/Object;
.source "LGBluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    }
.end annotation


# static fields
.field private static final FLAGS_FIELD_BYTES:I = 0x3

.field private static final MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field private static final MAX_ADVERTISING_DATA_BYTES:I = 0x1f

.field private static final OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field private static final SERVICE_DATA_UUID_LENGTH:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mLeAdvertisers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/AdvertiseCallback;",
            "Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    .line 93
    const-string v1, "bluetooth_manager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 94
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 95
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    .line 100
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 101
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    .line 102
    return-void

    .line 97
    :cond_0
    sget-object v1, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth binder is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;
    .param p1, "x1"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;
    .param p1, "x1"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "x2"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method private byteLength([B)I
    .locals 1
    .param p1, "array"    # [B

    .prologue
    .line 275
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method private postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "error"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$1;-><init>(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    return-void
.end method

.method private postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$2;-><init>(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void
.end method

.method private totalBytes(Landroid/bluetooth/le/AdvertiseData;)I
    .locals 8
    .param p1, "data"    # Landroid/bluetooth/le/AdvertiseData;

    .prologue
    .line 226
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 271
    :cond_0
    :goto_0
    return v5

    .line 227
    :cond_1
    const/4 v5, 0x3

    .line 228
    .local v5, "size":I
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 229
    const/4 v3, 0x0

    .line 230
    .local v3, "num16BitUuids":I
    const/4 v4, 0x0

    .line 231
    .local v4, "num32BitUuids":I
    const/4 v2, 0x0

    .line 232
    .local v2, "num128BitUuids":I
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 233
    .local v6, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 235
    :cond_2
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 238
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 242
    .end local v6    # "uuid":Landroid/os/ParcelUuid;
    :cond_4
    if-eqz v3, :cond_5

    .line 243
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 247
    :cond_5
    if-eqz v4, :cond_6

    .line 248
    mul-int/lit8 v7, v4, 0x4

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 252
    :cond_6
    if-eqz v2, :cond_7

    .line 253
    mul-int/lit8 v7, v2, 0x10

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 257
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "num128BitUuids":I
    .end local v3    # "num16BitUuids":I
    .end local v4    # "num32BitUuids":I
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 258
    .restart local v6    # "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->byteLength([B)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    .line 260
    goto :goto_2

    .line 261
    .end local v6    # "uuid":Landroid/os/ParcelUuid;
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_9

    .line 262
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->byteLength([B)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 265
    :cond_9
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 266
    add-int/lit8 v5, v5, 0x3

    .line 268
    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 269
    iget-object v7, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 211
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 215
    sget-object v0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v1, "finalize:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 221
    return-void

    .line 219
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 1
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 125
    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 9
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;
    .param p3, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;
    .param p4, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    const/16 v4, 0x1f

    .line 142
    sget-object v1, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLeAdvertisers size:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v8, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    monitor-enter v8

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->checkBleQuietmodeStateOn()V

    .line 148
    :cond_1
    if-nez p4, :cond_2

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 158
    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;)I

    move-result v1

    if-gt v1, v4, :cond_3

    invoke-direct {p0, p3}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;)I

    move-result v1

    if-le v1, v4, :cond_4

    .line 160
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, p4, v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 161
    monitor-exit v8

    .line 180
    :goto_0
    return-void

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 164
    const/4 v1, 0x3

    invoke-direct {p0, p4, v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 165
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 176
    .local v6, "gatt":Landroid/bluetooth/IBluetoothGatt;
    :try_start_3
    new-instance v0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;-><init>(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/IBluetoothGatt;)V

    .line 178
    .local v0, "wrapper":Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    invoke-virtual {v0}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->startRegisteration()V

    .line 179
    monitor-exit v8

    goto :goto_0

    .line 171
    .end local v0    # "wrapper":Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    .end local v6    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v7

    .line 172
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    const/4 v1, 0x4

    invoke-direct {p0, p4, v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 174
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    .line 191
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    monitor-enter v2

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    :cond_0
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->checkBleQuietmodeStateOn()V

    .line 195
    :cond_1
    if-nez p1, :cond_2

    .line 196
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 198
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;

    .line 199
    .local v0, "wrapper":Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    if-nez v0, :cond_3

    monitor-exit v2

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_3
    invoke-virtual {v0}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->stopAdvertising()V

    .line 201
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
