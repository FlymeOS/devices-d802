.class public Lcom/lge/systemservice/core/VolumeVibratorManager;
.super Ljava/lang/Object;
.source "VolumeVibratorManager.java"

# interfaces
.implements Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.volumevibrator"

.field private static final TAG:Ljava/lang/String;

.field public static final VIBRATE_DEFAULT_VOLUME:I = 0x5

.field public static final VIBRATE_MAX_VOLUME:I = 0x7

.field public static final VIBRATE_NONE_VOLUME:I = -0x1

.field public static final VIBRATE_NUM_TYPE:I = 0x3

.field public static final VIBRATE_TYPE_HAPTIC:I = 0x2

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RING:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;

.field private mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

.field private final mToken:Landroid/os/Binder;

.field private mVolumeValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/lge/systemservice/core/VolumeVibratorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    .line 63
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    .line 75
    const-string v3, "ro.lge.vib_magnitude_index"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "vibrateVolume":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 77
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.lge.vib_magnitude_index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "vibteteVolumeIndex":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 81
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialize mVolumeValue["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "i":I
    .end local v2    # "vibteteVolumeIndex":[Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mPackageName:Ljava/lang/String;

    .line 86
    return-void

    .line 63
    :array_0
    .array-data 4
        0x0
        0x7d0
        0xbb8
        0xfa0
        0x1388
        0x17ed
        0x1d6b
        0x13880
    .end array-data
.end method

.method static synthetic access$002(Lcom/lge/systemservice/core/VolumeVibratorManager;Lcom/lge/systemservice/core/IVolumeVibratorManager;)Lcom/lge/systemservice/core/IVolumeVibratorManager;
    .locals 0
    .param p0, "x0"    # Lcom/lge/systemservice/core/VolumeVibratorManager;
    .param p1, "x1"    # Lcom/lge/systemservice/core/IVolumeVibratorManager;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    return-object p1
.end method

.method private getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    if-nez v1, :cond_0

    .line 90
    const-string v1, "volumevibrator"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    .line 91
    iget-object v1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/lge/systemservice/core/VolumeVibratorManager$1;

    invoke-direct {v2, p0}, Lcom/lge/systemservice/core/VolumeVibratorManager$1;-><init>(Lcom/lge/systemservice/core/VolumeVibratorManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    goto :goto_0
.end method

.method private static usageForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 364
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 242
    .local v1, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 245
    :cond_0
    :try_start_0
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "cancel()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v2, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to cancel vibration."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVibrateVolume()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 282
    .local v1, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_0

    .line 289
    :goto_0
    return v2

    .line 285
    :cond_0
    :try_start_0
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "getVibrateVolume"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-interface {v1}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->getVibrateVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to getVibrateVolume."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVibrateVolume(I)I
    .locals 6
    .param p1, "vibrateType"    # I

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 327
    .local v1, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_0

    .line 336
    :goto_0
    return v2

    .line 330
    :cond_0
    if-ltz p1, :cond_1

    const/4 v3, 0x3

    if-ge p1, v3, :cond_1

    .line 332
    :try_start_0
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVibrateVolume vibrateType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->getVibrateVolumeType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to setVibrateVolume."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 339
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public setVibrateMute(Z)V
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 350
    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v2

    .line 352
    .local v2, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v2, :cond_0

    .line 361
    :goto_0
    return-void

    .line 356
    :cond_0
    :try_start_0
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVibrateMute() change to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " called by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    invoke-interface {v2, p1, v0, v3}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->setVibrateMute(ZLjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to setVibrateMute."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrateVolume(I)V
    .locals 5
    .param p1, "volumeIndex"    # I

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 260
    .local v1, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 262
    :cond_0
    if-ltz p1, :cond_1

    const/4 v2, 0x7

    if-gt p1, v2, :cond_1

    .line 264
    :try_start_0
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->setVibrateVolume(I)V

    .line 265
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVibrateVolume() volumeIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to setVibrateVolume."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 270
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public setVibrateVolume(II)V
    .locals 5
    .param p1, "vibrateType"    # I
    .param p2, "volumeIndex"    # I

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 303
    .local v1, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 305
    :cond_0
    if-ltz p2, :cond_1

    const/4 v2, 0x7

    if-gt p2, v2, :cond_1

    if-ltz p1, :cond_1

    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    .line 308
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->setVibrateVolumeType(II)V

    .line 309
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVibrateVolume vibrateType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volumeIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to setVibrateVolume."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public vibrate(JI)V
    .locals 1
    .param p1, "milliseconds"    # J
    .param p3, "volumeIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->vibrate(JILandroid/media/AudioAttributes;)V

    .line 116
    return-void
.end method

.method public vibrate(JILandroid/media/AudioAttributes;)V
    .locals 9
    .param p1, "milliseconds"    # J
    .param p3, "volumeIndex"    # I
    .param p4, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 136
    .local v1, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 138
    :cond_0
    if-ltz p3, :cond_1

    const/4 v2, 0x7

    if-gt p3, v2, :cond_1

    .line 140
    :try_start_0
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibrate() packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volumeIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    aget v6, v4, p3

    invoke-static {p4}, Lcom/lge/systemservice/core/VolumeVibratorManager;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v7

    iget-object v8, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    move-wide v4, p1

    invoke-interface/range {v1 .. v8}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->vibrate(ILjava/lang/String;JIILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to vibrate."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public vibrate([JI[I)V
    .locals 1
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "volumeIndex"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->vibrate([JI[ILandroid/media/AudioAttributes;)V

    .line 180
    return-void
.end method

.method public vibrate([JI[ILandroid/media/AudioAttributes;)V
    .locals 10
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "volumeIndex"    # [I
    .param p4, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v0

    .line 212
    .local v0, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 217
    :cond_0
    array-length v1, p1

    if-ge p2, v1, :cond_2

    array-length v1, p1

    array-length v2, p3

    if-ne v1, v2, :cond_2

    .line 219
    :try_start_0
    array-length v1, p3

    new-array v5, v1, [I

    .line 220
    .local v5, "NaturalVolumeIndex":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v1, p3

    if-ge v9, v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    aget v2, p3, v9

    aget v1, v1, v2

    aput v1, v5, v9

    .line 220
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 223
    :cond_1
    sget-object v1, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibratePattern() packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " volumeIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mPackageName:Ljava/lang/String;

    invoke-static {p4}, Lcom/lge/systemservice/core/VolumeVibratorManager;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v6

    iget-object v7, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v7}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->vibratePattern(ILjava/lang/String;[JI[IILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    .end local v5    # "NaturalVolumeIndex":[I
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .line 227
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 230
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method
