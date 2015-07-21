.class Lcom/android/server/LGEncryptionService;
.super Landroid/os/storage/ILGEncryptionService$Stub;
.source "LGEncryptionService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LGEncryptionService$VoldResponseCode;
    }
.end annotation


# static fields
.field public static final CRYPTO_TYPES:[Ljava/lang/String;

.field private static final DEBUG_EVENTS:Z = false

.field private static final ENCRYPTED_SDCARD_MSG:Ljava/lang/String; = "com.android.settings.EncryptedSDCardDialogActivity"

.field private static final ENCRYPTION_WARNING_MSG:Ljava/lang/String; = "com.android.settings.EncryptWarningDialogActivity"

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final OTHER_DEVICE_MSG:Ljava/lang/String; = "com.android.settings.OtherDeviceDialogActivity"

.field private static final TAG:Ljava/lang/String; = "LGEncryptionService"

.field private static final TIMEOUT:I = 0xa

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector4"

.field private static mNoPopup:Z


# instance fields
.field WarningDialogHandler:Landroid/os/Handler;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field mountService:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    sput-boolean v2, Lcom/android/server/LGEncryptionService;->mNoPopup:Z

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "password"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pattern"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pin"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/LGEncryptionService;->CRYPTO_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/os/storage/ILGEncryptionService$Stub;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/LGEncryptionService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 100
    new-instance v0, Lcom/android/server/LGEncryptionService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LGEncryptionService$2;-><init>(Lcom/android/server/LGEncryptionService;)V

    iput-object v0, p0, Lcom/android/server/LGEncryptionService;->WarningDialogHandler:Landroid/os/Handler;

    .line 205
    iput-object p1, p0, Lcom/android/server/LGEncryptionService;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LGEncryptionService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 207
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "VoldConnector4"

    const/16 v5, 0x19

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/LGEncryptionService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 208
    new-instance v7, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/LGEncryptionService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "VoldConnector4"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 209
    .local v7, "thread":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LGEncryptionService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LGEncryptionService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/LGEncryptionService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LGEncryptionService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LGEncryptionService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/LGEncryptionService;->getExternalSDCardMountPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LGEncryptionService;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LGEncryptionService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/LGEncryptionService;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LGEncryptionService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LGEncryptionService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/LGEncryptionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getExternalSDCardMountPath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 236
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LGEncryptionService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 237
    .local v4, "mVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v4, :cond_1

    .line 252
    .end local v4    # "mVolumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_0
    return-object v5

    .line 240
    .restart local v4    # "mVolumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    array-length v2, v4

    .line 242
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 243
    aget-object v3, v4, v1

    .line 244
    .local v3, "mStorageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 245
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 242
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 250
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "mStorageVolume":Landroid/os/storage/StorageVolume;
    .end local v4    # "mVolumes":[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LGEncryptionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getExternalSDCardMountPath...exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 213
    const-string v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 214
    .local v5, "service":Landroid/os/IBinder;
    if-nez v5, :cond_1

    .line 215
    const-string v6, "LGEncryptionService"

    const-string v8, "getInternalSDCardMountPath...service null"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 230
    :cond_0
    :goto_0
    return-object v4

    .line 218
    :cond_1
    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/LGEncryptionService;->mountService:Landroid/os/storage/IMountService;

    .line 220
    :try_start_0
    iget-object v6, p0, Lcom/android/server/LGEncryptionService;->mountService:Landroid/os/storage/IMountService;

    invoke-interface {v6}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 221
    .local v3, "list":[Landroid/os/Parcelable;
    if-nez v3, :cond_2

    const/4 v6, 0x0

    new-array v4, v6, [Landroid/os/storage/StorageVolume;

    goto :goto_0

    .line 222
    :cond_2
    array-length v2, v3

    .line 223
    .local v2, "length":I
    new-array v4, v2, [Landroid/os/storage/StorageVolume;

    .line 224
    .local v4, "result":[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 225
    aget-object v6, v3, v1

    check-cast v6, Landroid/os/storage/StorageVolume;

    aput-object v6, v4, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 228
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "list":[Landroid/os/Parcelable;
    .end local v4    # "result":[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "LGEncryptionService"

    const-string v8, "Failed to get volume list"

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v7

    .line 230
    goto :goto_0
.end method

.method private toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 263
    :goto_0
    return-object v1

    .line 260
    :cond_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 261
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 262
    .local v1, "hexPassword":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 60
    :goto_0
    const-wide/16 v2, 0x1388

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    const-string v1, "LGEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " still waiting for MountService ready..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "LGEncryptionService"

    const-string v2, "Interrupt while waiting for MountService to be ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForReady()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/LGEncryptionService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/LGEncryptionService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 55
    return-void
.end method


# virtual methods
.method public LGencryptStorage(ILjava/lang/String;)I
    .locals 8
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 315
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/android/server/LGEncryptionService;->waitForReady()V

    .line 329
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "enablelgcrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/android/server/LGEncryptionService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {p0, p2}, Lcom/android/server/LGEncryptionService;->toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return v1

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public changepw(Ljava/lang/String;)I
    .locals 8
    .param p1, "passwd"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LGEncryptionService;->waitForReady()V

    .line 471
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "sdcryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "changepw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {p0, p1}, Lcom/android/server/LGEncryptionService;->toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    return v1

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public isExistSDEncMetaFile()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 479
    iget-object v5, p0, Lcom/android/server/LGEncryptionService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.CRYPT_KEEPER"

    const-string v7, "no permission to access the crypt keeper"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v2, 0x0

    .line 485
    .local v2, "ret":I
    invoke-direct {p0}, Lcom/android/server/LGEncryptionService;->waitForReady()V

    .line 492
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LGEncryptionService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "sdcryptfs"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "check_km_meta"

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 493
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 497
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    if-nez v2, :cond_0

    .line 500
    :goto_1
    return v3

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0

    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_0
    move v3, v4

    .line 500
    goto :goto_1
.end method

.method public load_or_create_master_key(Ljava/lang/String;I)I
    .locals 9
    .param p1, "passwd"    # Ljava/lang/String;
    .param p2, "createFlag"    # I

    .prologue
    .line 431
    iget-object v3, p0, Lcom/android/server/LGEncryptionService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v2, -0x1

    .line 437
    .local v2, "ret":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LGEncryptionService;->waitForReady()V

    .line 448
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LGEncryptionService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "sdcryptfs"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "load_or_create_master_key"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {p0, p1}, Lcom/android/server/LGEncryptionService;->toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 449
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 453
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method public lockDevice()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 413
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lcom/android/server/LGEncryptionService;->waitForReady()V

    .line 423
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "sdcryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "delete_km_meta"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return v1

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/android/server/LGEncryptionService$1;

    const-string v1, "MountService#onDaemonConnected"

    invoke-direct {v0, p0, v1}, Lcom/android/server/LGEncryptionService$1;-><init>(Lcom/android/server/LGEncryptionService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/LGEncryptionService$1;->start()V

    .line 86
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    const/16 v8, 0x28c

    const/16 v7, 0x28b

    const/16 v6, 0x28a

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 147
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_SDENCRYPTION_USERKEY:Z

    if-eqz v5, :cond_5

    .line 148
    sget-boolean v5, Lcom/android/server/LGEncryptionService;->mNoPopup:Z

    if-eqz v5, :cond_2

    if-eq p1, v6, :cond_0

    if-eq p1, v8, :cond_0

    const/16 v5, 0x28d

    if-eq p1, v5, :cond_0

    const/16 v5, 0x28e

    if-ne p1, v5, :cond_2

    .line 152
    :cond_0
    const-string v5, "LGEncryptionService"

    const-string v6, "No Encryption Popup"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sput-boolean v4, Lcom/android/server/LGEncryptionService;->mNoPopup:Z

    .line 201
    :cond_1
    :goto_0
    return v3

    .line 155
    :cond_2
    sget-boolean v5, Lcom/android/server/LGEncryptionService;->mNoPopup:Z

    if-eqz v5, :cond_3

    if-ne p1, v7, :cond_3

    .line 156
    sput-boolean v4, Lcom/android/server/LGEncryptionService;->mNoPopup:Z

    .line 169
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 170
    .local v1, "msg":Landroid/os/Message;
    if-ne p1, v6, :cond_4

    .line 171
    const-string v5, "LGEncryptionService"

    const-string v6, "SDCryptNewSDCardInserted"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v5, "com.android.settings.EncryptWarningDialogActivity"

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    iget-object v5, p0, Lcom/android/server/LGEncryptionService;->WarningDialogHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    :cond_4
    if-ne p1, v7, :cond_8

    .line 176
    const-string v5, "LGEncryptionService"

    const-string v6, "SDCryptOtherDeviceEncrypted"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v5, "com.android.settings.OtherDeviceDialogActivity"

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    iget-object v5, p0, Lcom/android/server/LGEncryptionService;->WarningDialogHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_SDENCRYPTION_USERKEY:Z

    if-nez v5, :cond_8

    .line 180
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 181
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_7

    .line 182
    const-string v3, "LGEncryptionService"

    const-string v5, "SDCryptOtherDeviceEnCrypted...service null"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 183
    goto :goto_0

    .line 159
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "service":Landroid/os/IBinder;
    :cond_5
    sget-boolean v5, Lcom/android/server/LGEncryptionService;->mNoPopup:Z

    if-eqz v5, :cond_3

    if-eq p1, v6, :cond_6

    if-eq p1, v7, :cond_6

    if-eq p1, v8, :cond_6

    const/16 v5, 0x28d

    if-ne p1, v5, :cond_3

    .line 163
    :cond_6
    const-string v5, "LGEncryptionService"

    const-string v6, "No Encryption Popup"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sput-boolean v4, Lcom/android/server/LGEncryptionService;->mNoPopup:Z

    goto :goto_0

    .line 185
    .restart local v1    # "msg":Landroid/os/Message;
    .restart local v2    # "service":Landroid/os/IBinder;
    :cond_7
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/LGEncryptionService;->mountService:Landroid/os/storage/IMountService;

    .line 187
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LGEncryptionService;->mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Lcom/android/server/LGEncryptionService;->getExternalSDCardMountPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/LGEncryptionService;->mountService:Landroid/os/storage/IMountService;

    .line 194
    .end local v2    # "service":Landroid/os/IBinder;
    :cond_8
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_SDENCRYPTION_USERKEY:Z

    if-eqz v4, :cond_1

    .line 195
    const/16 v4, 0x28e

    if-ne p1, v4, :cond_1

    .line 196
    const-string v4, "LGEncryptionService"

    const-string v5, "SDCryptEncryptedSDCardInserted"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v4, "com.android.settings.EncryptedSDCardDialogActivity"

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 198
    iget-object v4, p0, Lcom/android/server/LGEncryptionService;->WarningDialogHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 188
    .restart local v2    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LGEncryptionService"

    const-string v5, "Error occured while unmounting external SD card"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 190
    goto/16 :goto_0
.end method

.method public quickencryptStorage(Ljava/lang/String;)I
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/android/server/LGEncryptionService;->waitForReady()V

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "enableqcrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {p0, p1}, Lcom/android/server/LGEncryptionService;->toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public quickunencryptStorage(Ljava/lang/String;)I
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 339
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lcom/android/server/LGEncryptionService;->waitForReady()V

    .line 353
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "disableqcrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {p0, p1}, Lcom/android/server/LGEncryptionService;->toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return v1

    .line 354
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public setNoPopupWhenEncryption(Z)V
    .locals 0
    .param p1, "noPopup"    # Z

    .prologue
    .line 409
    sput-boolean p1, Lcom/android/server/LGEncryptionService;->mNoPopup:Z

    .line 410
    return-void
.end method

.method public unencryptStorage(Ljava/lang/String;)I
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/android/server/LGEncryptionService;->waitForReady()V

    .line 281
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "disablecrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {p0, p1}, Lcom/android/server/LGEncryptionService;->toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return v1

    .line 282
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public unencryptWipeStorage(Ljava/lang/String;)I
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/android/server/LGEncryptionService;->waitForReady()V

    .line 377
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "disableqcrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "reset"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {p0, p1}, Lcom/android/server/LGEncryptionService;->toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return v1

    .line 378
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public userSwitchWithUID(I)I
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Lcom/android/server/LGEncryptionService;->waitForReady()V

    .line 397
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LGEncryptionService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "sdcryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "user_switch"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method
