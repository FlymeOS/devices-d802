.class public final Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;
.super Ljava/lang/Object;
.source "LGBleQuietmodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeEnableCallback;,
        Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;
    }
.end annotation


# static fields
.field public static final ERROR_ALREADY_ENABLED:I = 0x15

.field public static final ERROR_INTERNAL_ERROR:I = 0x17

.field public static final ERROR_NONE:I = 0x14

.field public static final ERROR_OBJECT_NULL:I = 0x16

.field public static final ERROR_TIMEOUT:I = 0x18

.field private static final MESSAGE_QUIETMODE_STATE:I = 0x1

.field public static final STATE_DISABLE_COMPLETE:I = 0x2

.field public static final STATE_ENABLE_FAILURE:I = 0x1

.field public static final STATE_ENABLE_SUCCESS:I

.field private static final TAG:Ljava/lang/String;

.field private static sAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

.field private static sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;


# instance fields
.field private mAdapterProxyCallback:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;

.field private final mBleQuietmodeServiceCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEnableCallback:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeEnableCallback;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$1;

    invoke-direct {v0, p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$1;-><init>(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;)V

    iput-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mConnection:Landroid/content/ServiceConnection;

    .line 212
    new-instance v0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$2;

    invoke-direct {v0, p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$2;-><init>(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;)V

    iput-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mBleQuietmodeServiceCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback;

    .line 220
    new-instance v0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$3;

    invoke-direct {v0, p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$3;-><init>(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;)V

    iput-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mHandler:Landroid/os/Handler;

    .line 53
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[BTUI] LGBleQuietmodeAdapter:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mAdapterProxyCallback:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;

    .line 57
    invoke-direct {p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->doBind()Z

    .line 58
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->init(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;)Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mAdapterProxyCallback:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;)Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;
    .locals 0
    .param p0, "x0"    # Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;
    .param p1, "x1"    # Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mAdapterProxyCallback:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;

    return-object p1
.end method

.method static synthetic access$402(Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;)Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    .prologue
    .line 27
    sput-object p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;II)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->updateBleQuietmodeCallback(II)V

    return-void
.end method

.method public static checkBleQuietmodeStateOn()V
    .locals 3

    .prologue
    .line 270
    :try_start_0
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    invoke-interface {v1}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "BLE Quietmode is not turned ON"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    :cond_1
    return-void
.end method

.method private doBind()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 63
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v1, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    :cond_0
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to ILGBleQuietmodeAdapter Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 68
    :cond_1
    return v2
.end method

.method public static declared-synchronized getQuietmodeAdapter(Landroid/content/Context;Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cb"    # Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;

    .prologue
    .line 41
    const-class v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 43
    :cond_0
    :try_start_1
    new-instance v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    invoke-direct {v1, p0, p1}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;-><init>(Landroid/content/Context;Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeProxyCallback;)V

    sput-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :cond_1
    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get adapter"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    const/4 v1, 0x0

    goto :goto_0

    .line 41
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private init(Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 73
    :try_start_0
    invoke-static {p1}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    move-result-object v1

    sput-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    .line 74
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[init]  sService :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    if-eqz v1, :cond_0

    .line 76
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v2, "registerCallback :  ILGBleQuietmodeAdapterCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mBleQuietmodeServiceCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback;

    invoke-interface {v1, v2}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;->registerCallback(Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/4 v1, 0x1

    .line 83
    :goto_0
    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isQuietmodeSupported()Z
    .locals 4

    .prologue
    .line 157
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v2, "0000 isQuietmodeSupported:  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "supported":Z
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isBRCMSolution()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const/4 v0, 0x1

    .line 161
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brcm : quietmode supported= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 162
    :cond_1
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isMTKSolution()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mtk : quietmode supported= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isQCTSolution()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qct : quietmode supported= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateBleQuietmodeCallback(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 234
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackBleQuietmodeEnableState:  mEnableCallback:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mEnableCallback:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeEnableCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mEnableCallback:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeEnableCallback;

    if-eqz v0, :cond_0

    .line 236
    if-nez p1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mEnableCallback:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeEnableCallback;

    invoke-interface {v0}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeEnableCallback;->onEnableSuccess()V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mEnableCallback:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeEnableCallback;

    invoke-interface {v0, p2}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeEnableCallback;->onEnableFailure(I)V

    goto :goto_0

    .line 240
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public disable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 108
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v3, "0000 disable:  "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->isQuietmodeSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v3, "The quietmode is not supported.."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    :try_start_0
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    if-eqz v2, :cond_0

    .line 116
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    invoke-interface {v2}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;->disable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enable(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeEnableCallback;)Z
    .locals 5
    .param p1, "callback"    # Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeEnableCallback;

    .prologue
    const/4 v1, 0x0

    .line 90
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0000 enable:  sService:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->isQuietmodeSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v3, "The quietmode is not supported.."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 96
    :cond_1
    iput-object p1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mEnableCallback:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$LGBleQuietmodeEnableCallback;

    .line 98
    :try_start_0
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    if-eqz v2, :cond_0

    .line 99
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    invoke-interface {v2}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v1, "0000 finish:  "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->disable()Z

    .line 144
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 146
    iput-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mContext:Landroid/content/Context;

    .line 148
    :cond_0
    iput-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->mContext:Landroid/content/Context;

    .line 149
    sput-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    .line 151
    return-void
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 125
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v3, "0000 isEnabled:  "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->isQuietmodeSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v3, "The quietmode is not supported.."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    :try_start_0
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    if-eqz v2, :cond_0

    .line 133
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->sService:Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;

    invoke-interface {v2}, Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapter;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
